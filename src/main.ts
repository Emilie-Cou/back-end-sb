import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { ValidationPipe } from '@nestjs/common';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  app.useGlobalPipes(new ValidationPipe({
    whitelist : true, // Permet de garder les props présentes dans le DTO
    transform : true, // Le ValidationPipe peut transformer automatiquement les charges utiles en objets typés selon leurs classes DTO
  }))

  await app.listen(3000);
}
bootstrap();
