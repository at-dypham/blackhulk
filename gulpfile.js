var gulp = require('gulp');
var vulcanize = require('gulp-vulcanize');
var del= require('gulp-vulcanize');
var minifyHTML = require('gulp-minify-html');

gulp.task('vulcanize', function () {
  return gulp.src('public/components/x-blackhulk.html')
    .pipe(vulcanize({
    }))
    .pipe(gulp.dest('public/dist/vulcanize'));
});

gulp.task('clean', function () {
  return del([
    'public/dist/vulcanize/*',
  ])
});

gulp.task('minify', function() {
  var opts = {
  };

  return gulp.src('public/dist/vulcanize/*')
    .pipe(minifyHTML(opts))
    .pipe(gulp.dest('public/dist'));
});

gulp.task('default', ['vulcanize', 'minify', 'clean']);
