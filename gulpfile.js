var gulp = require('gulp');
var vulcanize = require('gulp-vulcanize');
var del= require('gulp-vulcanize');
var minifyHTML = require('gulp-minify-html');
var runSequence = require('run-sequence');

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
    collapseWhitespace: true,
    removeComments: true,
    quoteCharacter: '\'',
    conservativeCollapse: true,
    minifyJS: true,
    minifyCSS: true
  };

  return gulp.src('public/dist/vulcanize/*')
    .pipe(minifyHTML(opts))
    .pipe(gulp.dest('public/dist'));
});

gulp.task('build', function(callback) {
  runSequence(
    'vulcanize',
    'minify',
    'clean'
  );
});

gulp.task('default', ['build']);
