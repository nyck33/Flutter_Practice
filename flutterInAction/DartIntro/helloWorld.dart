
void main(){
    helloDart();
    helloMany();
}

void helloDart(){
    print('Hello, Dart.');
}

void helloMany(){
    List<String> greetings = [
        'World',
        "Mars",
        "Oregon",
        "Barry",
        'David Bowie',
    ];
    for (var name in greetings){
        helloIO(name);
    }
}

void helloIO(String name){
    print('Hello, $name');
}
