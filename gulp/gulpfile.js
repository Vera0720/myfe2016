var gulp = require('gulp');
var sass = require('gulp-sass');
var connect = require('gulp-connect');
gulp.task('test',function(){
    console.log('aaa');
});
gulp.task('test1',function(){
    console.log('bbb');
});
gulp.task('test3',['test','test1']);
gulp.task('copy-html', function () {
    gulp.src('index.html').pipe(gulp.dest('dist'));
});
gulp.task('copy-img', function () {
    gulp.src(['src/images/**/*.{jpg,png}','!src/images/prev.png']).pipe(gulp.dest('dist/img'));
});
gulp.task('sass', function () {
    gulp.src('src/sass/*.scss').pipe(sass())
        .pipe(sass({outputStyle:'expanded'}))
        .pipe(gulp.dest('dist/css')).pipe(connect.reload());
});


//实时刷新
gulp.task('watch',function(){
    gulp.watch('index.html',['copy-html']);//一旦index.html变化，执行copy-html
    gulp.watch('src/sass/*.scss',['sass']);
});
gulp.task('copy-html', function () {
    gulp.src('index.html')
        .pipe(gulp.dest('dist'))//扔到disk里
        .pipe(connect.reload());//然后重新加载
});
gulp.task('server',function(){
    connect.server({
        root:'dist',
        livereload:true//实时刷新
    })
});
gulp.task('default',['server','watch']);
gulp.task('concat',function(){
    gulp.src('src/js/*.js').pipe(concat('index.js'))
        .pipe(gulp.dest('dist/js'))
        .pipe(uglify()).pipe(rename('index.min.js')).pipe(gulp.dest('dist/js'));
});
