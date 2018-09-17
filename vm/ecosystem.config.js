module.exports = {
  /**
   * Application configuration section
   * http://pm2.keymetrics.io/docs/usage/application-declaration/
   */
  apps: [

    // First application
    {
      name: 'api',
      script: './booktapi/server.js',
      watch: true,
      env: {
        NODE_ENV: 'development',
        DATABASE_URL: 'postgres://postgres:Mccrsvnl1@localhost:5432/booktapi?ssl=true',
        JWT_SECRET: '4XH0VDC8bCRrtMdt'
      },
      env_staging: {
        NODE_ENV: 'staging',
        DATABASE_URL: 'postgres://postgres:Mccrsvnl1@localhost:5432/booktapi?ssl=true',
        JWT_SECRET: '4XH0VDC8bCRrtMdt',
      },
      env_production: {
        NODE_ENV: 'production',
        DATABASE_URL: 'postgres://postgres:Mccrsvnl1@localhost:5432/booktapi?ssl=true',
        JWT_SECRET: '4XH0VDC8bCRrtMdt',
      }
    },
    // Second application
    {
      name: 'portal',
      script: './booktportal/server.js',
      watch: true,
      env: {
        NODE_ENV: 'development'
      },
      env_staging: {
        NODE_ENV: 'staging',
      },
      env_production: {
        NODE_ENV: 'production'
      }
    }
  ],

  /**
   * Deployment section
   * http://pm2.keymetrics.io/docs/usage/deployment/
   *
  deploy: {
    api_production: {
      user: 'james',
      host: '127.0.0.1',
      ref: 'origin/master',
      repo: 'git@github.com:jamesvanleuven/booktapi.git',
      path: '/var/www/api', 
      'post-deploy': 'yarn install && pm2 reload ./ecosystem.config.js --env production',
      env: {
        NODE_ENV: 'production',
        DATABASE_URL: 'postgres://postgres:Mccrsvnl1@localhost:5432/booktapi?ssl=true',
        JWT_SECRET: '4XH0VDC8bCRrtMdt',
      }
    },
    portal_production: {
      user: 'james',
      host: '127.0.0.1',
      ref: 'origin/master',
      repo: 'git@github.com/jamesvanleuven/booktportal.git',
      path: '/var/www/portal',
      'post-deploy': 'grunt serve -f && yarn dev && pm2 reload ./ecosystem.config.js --env production',
      env: {
        NODE_ENV: 'production'
      }
    },
    api_staging: {
      user: 'james',
      host: '4127.0.0.1',
      ref: 'origin/stable',
      repo: 'git@github.com:jamesvanleuven/booktapi.git',
      path: '/var/www/api',
      'post-deploy': 'yarn install && pm2 reload ./ecosystem.config.js --env development',
      env: {
        NODE_ENV: 'production',
        DATABASE_URL: 'postgres://postgres:Mccrsvnl1@localhost:5432/booktapi?ssl=true',
        JWT_SECRET: '4XH0VDC8bCRrtMdt',
      }
    },
    portal_staging: {
      user: 'james',
      host: '127.0.0.1',
      ref: 'origin/stable',
      repo: 'git@github.com/jamesvanleuven/booktportal.git',
      path: '/var/www/portal',
      'post-deploy': 'grunt serve -f && yarn dev && pm2 reload ./ecosystem.config.js --env development',
      env: {
        NODE_ENV: 'production'
      }
    },
    api_development: {
      user: 'james',
      host: '127.0.0.1',
      ref: 'origin/development',
      repo: 'git@github.com:jamesvanleuven/booktapi.git',
      path: '/var/www/api',
      'post-deploy': 'yarn install && pm2 reload ecosystem.config.js --env development',
      env: {
        NODE_ENV: 'development',
        DATABASE_URL: 'postgres://postgres:Mccrsvnl1@localhost:5432/booktapi?ssl=true',
        JWT_SECRET: '4XH0VDC8bCRrtMdt',
      }
    },
    portal_development: {
      user: 'james',
      host: '127.0.0.1',
      ref: 'origin/development',
      repo: 'git@github.com/jamesvanleuven/booktportal.git',
      path: '/var/www/portal',
      'post-deploy': 'grunt serve -f && yarn dev && pm2 reload ./ecosystem.config.js --env development',
      env: {
        NODE_ENV: 'development'
      }
    },
  }
  */
}
