class CreatePersonDto {
  final String nome;
  final int altura;
  final double peso;

  const CreatePersonDto({
    required this.nome, 
    required this.altura, 
    required this.peso
  });
}