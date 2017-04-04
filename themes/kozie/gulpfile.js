"use strict";

const gulp = require("gulp");

const babel = require("gulp-babel");
const sass = require("gulp-sass");
const autoprefixer = require('gulp-autoprefixer');

const sourcemaps = require("gulp-sourcemaps");

const autoprefixerOptions = {
    'browsers': ['last 3 versions']
};

gulp.task("styles", () => {
    return gulp.src('./src/css/styles.scss')
        .pipe(sourcemaps.init())
        .pipe(sass().on('error', sass.logError))
        .pipe(sourcemaps.write())
        .pipe(autoprefixer(autoprefixerOptions))
        .pipe(gulp.dest('./static/css'));
});

gulp.task("styles:watch", () => {
    gulp.watch('./src/css/**/*.scss', ['styles']);
});

gulp.task('js', () => {
    return gulp.src('src/js/**/*.js')
        .pipe(sourcemaps.init())
        .pipe(babel())
        .pipe(sourcemaps.write())
        .pipe(gulp.dest('static/js'));
});

gulp.task('default', ['styles', 'styles:watch']);
