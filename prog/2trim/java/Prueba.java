public class Prueba {
    public static void main(String[] args) {
        Contador c = new Contador();
        Contador z = new Contador();

        // Da 'true' porque en 'Contador.java' hemos cambiado el cuerpo del método 'equals'
        System.out.println(c.equals(z));
        // Da 'falso' porque no 'apuntan' al mismo espacio en memoria ambas variables
        System.out.println(c == z);
        //c.setValor(4);
        //z.setValor(5);
        System.out.println(c.getValor());
        System.out.println(z.getValor());
        System.out.println(c == z);
        
        int numero = 45;
        

        System.out.println("Hola, mundo");
        System.out.println(numero);
        numero = 33;
        System.out.println(numero);
    }
}