public class Ordenar {

	public static void main(String[] args) {
		
		int n = 6; // tamanho do vetor
		int vetor[] = new int[n]; // declaração e alocação de espaço para o vetor "v"
		vetor[0]=5;
		vetor[1]=59;
		vetor[2]=35;
		vetor[3]=1;
		vetor[4]=2;
		vetor[5]=7;

		for (int i = 0; i < n; i++) {
			for (int j = i+1; j < n; j++) {
				if(vetor[i]>vetor[j]){
					int temp = vetor[i];
					vetor[i] = vetor[j];
					vetor[j] = temp;					
				}
			}
		}
		
		for (int i = 0; i < n; i++) {
			System.out.println(vetor[i]);
		}
	}
}
