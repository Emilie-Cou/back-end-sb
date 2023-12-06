import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { ClasseModule } from './controllers/_classe/_classe.module';
import { CommentModule } from './controllers/_comment/_comment.module';
import { ProfModule } from './controllers/_prof/_prof.module';
import { StudentModule } from './controllers/_student/_student.module';
import { BlogModule } from './controllers/_blog/_blog.module';
import { BlogComModule } from './controllers/_blog-com/_blog-com.module';
import { MsgParentModule } from './controllers/_msg-parent/_msg-parent.module';
import { TypeOrmModule } from '@nestjs/typeorm';
import { ConnectModule } from './controllers/_connect/_connect.module';

@Module({
  imports: [
    ClasseModule,
    CommentModule,
    ProfModule,
    StudentModule,
    BlogModule,
    BlogComModule,
    MsgParentModule,
    ConnectModule,
    TypeOrmModule.forRoot({
      type: "mssql",
      host: "localhost",
      port: 1433,
      username: "loginSB",
      password: "schoolbook",
      database: "SchoolBook",
      extra: {
        trustServerCertificate: true,
        validateConnection: false
      },
      entities: [__dirname + "/**/*.entity.{ts, js}"],
      autoLoadEntities: true,
      synchronize: true,
      //charset: "utf-8" //!Il le prend pas
      //logging : "all"
    }),
  ],

  controllers: [
    AppController,
  ],

  providers: [
    AppService,
  ],
})

export class AppModule {}