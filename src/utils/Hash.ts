import * as bcrypt from 'bcryptjs';

export class Hash {
  static make(plainText: string) {
    const salt = bcrypt.genSaltSync(10);
    return bcrypt.hashSync(plainText, salt);
  }

  static compare(plainText: string, hash: string) {
    return bcrypt.compareSync(plainText, hash);
  }
}
