module.exports = function(grunt) {

  require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);

  grunt.initConfig({

    compass: {
      compile: {
        options: {
          sassDir: 'src/sass/',
          cssDir: './',
          force: true,
          outputStyle: 'compressed',
          relativeAssets: true
        }
      }
    },
  
    jade: {
      compile: {
        files: {
          './index.html':'src/jade/index.jade',
        }
      }
    },
  
    watch: {
      compass: {
        files: ['src/sass/*.scss'],
        tasks: ['compass:compile']
      },
      jade: {
        files: ['src/jade/*.jade'],
        tasks: ['jade:compile']
      }
    },
  
    browserSync: {
      dev: {
        bsFiles: {
          src: ['./*.css', './*.html', './*.js']
        },
        options: {
          server: {
            baseDir: './'
          },
          watchTask: true,
          port: 8080
        }
      }
    },
  
    'gh-pages': {
      options: {
        base: './'
      },
      src: ['index.html', 'main.css', 'favicon.ico']
    }
  
  });
  
  grunt.registerTask('build', ['compass:compile', 'jade:compile']);
  grunt.registerTask('dev', ['browserSync', 'watch']);
  grunt.registerTask('default', ['dev']);

};