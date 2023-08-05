import 'package:flutter/material.dart';

class UnderstandingConstrainst extends StatelessWidget {
  const UnderstandingConstrainst({super.key});

  @override
  Widget build(BuildContext context) {
    return example17(context);
  }

  // A tela é o pai do Container,
  // e força o Container a ter exatamente o mesmo tamanho da tela.
  // Então o Container preenche a tela e a pinta de vermelho.
  Widget example1(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }

  // O vermelho Container quer ser 100 × 100, mas não pode,
  // porque a tela o obriga a ter exatamente o mesmo tamanho da tela
  Widget example2(BuildContext context) {
    return Container(
      color: Colors.red,
      width: 100,
      height: 100,
    );
  }

  // A tela força o Center a ser exatamente do mesmo tamanho que a tela,
  // então o Center preenche a tela.
  // O Center diz Container que pode ser do tamanho que quiser,
  // mas não maior que a tela.
  // Agora, o Container pode realmente ser 100 × 100.
  Widget example3(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        width: 50,
        height: 50,
      ),
    );
  }

  // Isso é diferente do exemplo anterior, pois usa Align em vez de Center.
  // Align também informa Container que pode ter o tamanho que quiser,
  // mas se houver espaço vazio, não centralizará o Container.
  // Em vez disso, ele alinha o contêiner no canto inferior direito
  // do espaço disponível.
  Widget example4(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
    );
  }

  // A tela força o Center a ser exatamente do mesmo tamanho que a tela,
  // então o Center preenche a tela.
  // O Center diz Container pode ser do tamanho que quiser,
  // mas não maior que a tela. O Container quer ter tamanho infinito,
  // mas como não pode ser maior que a tela, apenas preenche a tela.
  Widget example5(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }

  // A tela força o Center a ser exatamente do mesmo tamanho que a tela,
  // então o Centerpreenche a tela.
  Widget example6(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
      ),
    );
  }

  // A tela força o Center a ser exatamente do mesmo tamanho que a tela,
  // então o Center preenche a tela.
  // O Center diz ao vermelho Container que pode ser do tamanho que quiser,
  // mas não maior que a tela.
  // Como o vermelho Container não tem tamanho, mas tem um filho,
  // ele decide que quer ter o mesmo tamanho que seu filho.
  // O vermelho Container diz a seu filho que pode ser do tamanho que quiser,
  // mas não maior que a tela.
  // A criança é um verde Container que quer ser 30 × 30.
  // Dado que o vermelho Container se ajusta ao tamanho de seu filho,
  // também é 30 × 30.
  // A cor vermelha não é visível porque o verde Container cobre totalmente
  // o vermelho Container.
  Widget example7(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.red,
        child: Container(
          color: Colors.green,
          width: 100,
          height: 100,
        ),
      ),
    );
  }

  // O vermelho Container se ajusta ao tamanho de seus filhos,
  // mas leva em consideração seu próprio enchimento.
  // Portanto, também é 30 × 30 mais preenchimento.
  // A cor vermelha é visível por causa do preenchimento,
  // e o verde Container tem o mesmo tamanho do exemplo anterior.
  Widget example8(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.red,
        child: Container(
          color: Colors.green,
          width: 100,
          height: 100,
        ),
      ),
    );
  }

  // Você pode imaginar que Containerdeve estar entre 70 e 150 pixels,
  // mas estaria errado.
  // O ConstrainedBox único impõe restrições adicionais daquelas que recebe
  // de seu pai.
  // Aqui, a tela força o ConstrainedBox a ter exatamente o mesmo tamanho da
  // tela, então ele diz ao seu filho Container para assumir também o tamanho
  // da tela, ignorando assim seu constraints parâmetro.
  Widget example9(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 70,
        minHeight: 70,
        maxWidth: 150,
        maxHeight: 150,
      ),
      child: Container(
        color: Colors.red,
        width: 10,
        height: 10,
      ),
    );
  }

  // Agora, Center permite ConstrainedBox ser de qualquer tamanho
  // até o tamanho da tela. O ConstrainedBox impõe restrições adicionais
  // de seu constraints parâmetro para seu filho.
  // O Container deve ter entre 70 e 150 pixels.
  // Ele quer ter 10 pixels, então acaba tendo 70 (o mínimo).
  Widget example10(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 70,
          minHeight: 70,
          maxWidth: 150,
          maxHeight: 150,
        ),
        child: Container(
          color: Colors.red,
          width: 10,
          height: 10,
        ),
      ),
    );
  }

  // Center permite ConstrainedBox ser de qualquer tamanho até o
  // tamanho da tela. O ConstrainedBox impõe restrições adicionais de
  // seu constraints parâmetro para seu filho.
  // O Container deve estar entre 70 e 150 pixels.
  // Ele quer ter 1000 pixels, então acaba tendo 150 (o máximo).
  Widget example11(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 70,
          minHeight: 70,
          maxWidth: 150,
          maxHeight: 150,
        ),
        child: Container(
          color: Colors.red,
          width: 1000,
          height: 1000,
        ),
      ),
    );
  }

  Widget example12(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minWidth: 70,
          minHeight: 70,
          maxWidth: 150,
          maxHeight: 150,
        ),
        child: Container(
          color: Colors.red,
          width: 100,
          height: 100,
        ),
      ),
    );
  }

  Widget example13(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        color: Colors.red,
        width: 20,
        height: 20,
      ),
    );
  }

  Widget example14(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        color: Colors.red,
        width: 4000,
        height: 50,
      ),
    );
  }

  // A tela força o OverflowBoxa ter exatamente o mesmo tamanho da tela
  // e OverflowBox permite que seu filho Container tenha o tamanho que desejar.
  // OverflowBox é semelhante a UnconstrainedBox;
  // a diferença é que não exibirá nenhum aviso caso a criança não
  // caiba no espaço.
  // Nesse caso, o Container tem 4000 pixels de largura e é muito
  // grande para caber no OverflowBox,
  // mas OverflowBox simplesmente mostra o máximo que pode, sem avisos.
  Widget example15(BuildContext context) {
    return OverflowBox(
      minWidth: 0,
      maxWidth: double.infinity,
      minHeight: 0,
      maxHeight: double.infinity,
      child: Container(
        color: Colors.red,
        width: 4000,
        height: 20,
      ),
    );
  }

  // Isso não renderizará nada e você verá um erro no console.
  Widget example16(BuildContext context) {
    return UnconstrainedBox(
      child: Container(
        color: Colors.red,
        width: double.infinity,
        height: 100,
      ),
    );
  }

  // Aqui você não receberá mais um erro,
  // porque quando o LimitedBoxé dado um tamanho infinito pelo
  // UnconstrainedBox; ele passa uma largura máxima de 100 para seu filho.
  Widget example17(BuildContext context) {
    return UnconstrainedBox(
      child: LimitedBox(
        maxWidth: 100,
        child: Container(
          color: Colors.red,
          width: double.infinity,
          height: 100,
        ),
      ),
    );
  }
}
