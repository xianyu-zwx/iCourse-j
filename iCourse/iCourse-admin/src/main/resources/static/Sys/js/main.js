// 系统状态
const systemState = {
    wifiConnected: true,
    mqttConnected: true,
    videoStream: null
};

// 页面切换功能
function updateActiveMenu(pageId) {
    document.querySelectorAll('.nav-links a').forEach(a => {
        a.classList.remove('active');
        if (a.getAttribute('data-page') === pageId) {
            a.classList.add('active');
        }
    });
}

function getPageDescription(pageId) {
    const descriptions = {
        'dashboard': '实时监控系统状态和传感器数据',
        'students': '管理学生信息和注册状态',
        'classes': '管理班级信息和学生分配',
        'teachers': '管理教师信息和课程分配',
        'courses': '管理课程信息和教学计划',
        'schedules': '管理课程安排和时间表',
        'attendance': '查看和管理考勤记录',
        'radar': '毫米波雷达实时数据和记录',
        'files': '管理SD卡上的文件和文档',
        'settings': '系统设置和配置选项'
    };
    return descriptions[pageId] || '管理页面';
}

function loadFrame(pageId, url) {
    // 更新活动菜单项
    updateActiveMenu(pageId);

    // 更新标题
    document.querySelector('.header-title h2').textContent =
        document.querySelector(`.nav-links a[data-page="${pageId}"] .nav-text`).textContent;
    document.querySelector('.header-title p').textContent = getPageDescription(pageId);

    // const iframe = document.querySelector('x-iframe');
    const iframe = document.getElementById('x-iframe1');
    if (iframe) {
        iframe.src = url;
    }
    // initPage(pageId);
}


// 加载Thymeleaf片段
function loadPageFragment(pageId) {
    // 更新活动菜单项
    updateActiveMenu(pageId);

    // 更新标题
    document.querySelector('.header-title h2').textContent =
        document.querySelector(`.nav-links a[data-page="${pageId}"] .nav-text`).textContent;
    document.querySelector('.header-title p').textContent = getPageDescription(pageId);

    // 显示加载指示器
    const contentDiv = document.getElementById('content');
    contentDiv.innerHTML = `
                <div class="loading">
                    <div class="spinner"></div>
                </div>
            `;

    // 通过AJAX加载页面片段
    axios.get(`/fragments/${pageId}`)
        .then(response => {
            contentDiv.innerHTML = response.data;
            initPage(pageId);
        })
        .catch(error => {
            console.error('加载页面失败:', error);
            contentDiv.innerHTML = `<div class="error">加载页面失败，请重试</div>`;
        });
}


// 初始化页面特定功能
function initPage(pageId) {
    switch(pageId) {
        case 'dashboard':
            initDashboard();
            break;
        case 'students':
            initStudents();
            break;
        case 'attendance':
            initAttendance();
            break;
        case 'files':
            initFiles();
            break;
        case 'radar':
            initRadar();
            break;
        default:
        // 其他页面初始化
    }
}

// 仪表盘初始化
function initDashboard() {
    initCharts();
    fetchRealTimeData();
    initVideoStream();

    // 绑定事件
    document.getElementById('refresh-video')?.addEventListener('click', initVideoStream);
    document.getElementById('capture-btn')?.addEventListener('click', captureFace);
}

// 学生管理初始化
function initStudents() {
    fetchStudents();

    // 绑定事件
    document.getElementById('addStudentBtn')?.addEventListener('click', () => {
        document.getElementById('student-form').scrollIntoView({behavior: 'smooth'});
    });
    document.getElementById('save-student')?.addEventListener('click', addStudent);
    document.getElementById('reset-student')?.addEventListener('click', () => {
        document.getElementById('student-form').reset();
    });
}

// 考勤管理初始化
function initAttendance() {
    fetchAttendanceRecords();

    // 绑定事件
    document.getElementById('export-attendance')?.addEventListener('click', exportAttendanceData);
    document.getElementById('print-attendance')?.addEventListener('click', () => {
        showNotification('打印功能已调用', 'info');
        window.print();
    });
}

// 文件管理初始化
function initFiles() {
    refreshFileList();

    // 绑定事件
    document.getElementById('start-upload')?.addEventListener('click', handleFileUpload);
    document.getElementById('uploadBtn')?.addEventListener('click', () => {
        document.getElementById('fileUpload').click();
    });
    document.getElementById('refresh-files')?.addEventListener('click', refreshFileList);
}

// 雷达管理初始化
function initRadar() {
    fetchRadarData();

    // 绑定事件
    document.getElementById('refresh-radar')?.addEventListener('click', fetchRadarData);
}


// 图表初始化
function initCharts() {
    // 考勤统计饼图
    const attendanceCtx = document.getElementById('attendanceChart')?.getContext('2d');
    if (attendanceCtx) {
        window.attendanceChart = new Chart(attendanceCtx, {
            type: 'doughnut',
            data: {
                labels: ['正常', '迟到', '早退', '缺勤'],
                datasets: [{
                    data: [75, 10, 5, 10],
                    backgroundColor: [
                        '#64ffda',
                        '#f8e16c',
                        '#ffa62b',
                        '#ff6b6b'
                    ],
                    borderWidth: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'right',
                        labels: {
                            color: '#ccd6f6',
                            font: {
                                size: 12
                            }
                        }
                    },
                    tooltip: {
                        backgroundColor: 'rgba(10, 25, 47, 0.9)',
                        titleColor: '#64ffda',
                        bodyColor: '#ccd6f6',
                        borderColor: 'rgba(100, 255, 218, 0.2)',
                        borderWidth: 1
                    }
                }
            }
        });
    }

    // 每日考勤饼图
    const dailyAttendanceCtx = document.getElementById('dailyAttendanceChart')?.getContext('2d');
    if (dailyAttendanceCtx) {
        window.dailyAttendanceChart = new Chart(dailyAttendanceCtx, {
            type: 'pie',
            data: {
                labels: ['已到', '迟到', '缺勤'],
                datasets: [{
                    data: [80, 7, 13],
                    backgroundColor: [
                        '#64ffda',
                        '#f8e16c',
                        '#ff6b6b'
                    ],
                    borderWidth: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'right',
                        labels: {
                            color: '#ccd6f6',
                            font: {
                                size: 12
                            }
                        }
                    }
                }
            }
        });
    }

    // 雷达图表
    const radarCtx = document.getElementById('radarChart')?.getContext('2d');
    if (radarCtx) {
        window.radarChart = new Chart(radarCtx, {
            type: 'line',
            data: {
                labels: ['14:20', '14:25', '14:30', '14:35', '14:40', '14:45', '14:50'],
                datasets: [
                    {
                        label: '心率 (BPM)',
                        data: [70, 71, 72, 73, 72, 71, 70],
                        borderColor: '#64ffda',
                        backgroundColor: 'rgba(100, 255, 218, 0.1)',
                        tension: 0.4,
                        fill: true
                    },
                    {
                        label: '呼吸率 (BPM)',
                        data: [15, 16, 16, 17, 16, 16, 15],
                        borderColor: '#f8e16c',
                        backgroundColor: 'rgba(248, 225, 108, 0.1)',
                        tension: 0.4,
                        fill: true
                    }
                ]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                scales: {
                    x: {
                        grid: {
                            color: 'rgba(204, 214, 246, 0.1)'
                        },
                        ticks: {
                            color: '#8892b0'
                        }
                    },
                    y: {
                        grid: {
                            color: 'rgba(204, 214, 246, 0.1)'
                        },
                        ticks: {
                            color: '#8892b0'
                        }
                    }
                },
                plugins: {
                    legend: {
                        labels: {
                            color: '#ccd6f6'
                        }
                    }
                }
            }
        });
    }
}


