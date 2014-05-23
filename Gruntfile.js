module.exports = function(grunt) {

  require('matchdep').filterDev('grunt-*').forEach(grunt.loadNpmTasks);

  grunt.initConfig({

    compass: {
      dev: {
        options: {
          sassDir: 'sass',
          cssDir: 'css',
          outputStyle: 'compressed',
        }
      }
    },
    
    jade: {
      compile: {
        files: {
          'index.html':'templates/index.jade'
        }
      }
    },

    watch: {
      compass: {
        files: ['sass/*.scss'],
        tasks: ['compass:dev']
      },
      jade: {
        files: ['templates/*.jade'],
        tasks: ['jade:compile']
      }
    }

  });

  grunt.registerTask('dev', ['watch']);
  grunt.registerTask('compile', ['compass:dev', 'jade:compile']);
  grunt.registerTask('default', ['dev']);

}
