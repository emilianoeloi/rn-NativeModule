# Módulos Nativos - Native Module

Essa é uma App React Native com a qual eu vou tentar aplicar as diversas formas de utilização dos Módulos Nativos, como referenciado na documentação do RN os módulos nativos são necessarios quando o que ja esta disponível não atende o que precisa ser feito na App, Alta performance, Multi-threading etc.

## Eventos assincronos

Minha implementação inicial está relacionada a utilização de multiplas instancias de um módulo, algo que não é suportado inicialmente.
Vou usar como exemplo um módulo que precisa entregar a URL de uma imagem, no entanto, essa imagem vai vir de um servidor depois de varios tratamentos, ou seja, vai ter um retorno assincrono e a biblioteca nativa entrega o resultado da imagem processada apenas via delegate, ou seja, não será possível utilizar um callback ou uma Promisse, o que vou utilizar aqui é o EventEmmiter para enviar os dados para a app assim que a imagem tiver pronta

### Exemplo de utilização do Componente

```html
<ImagemTratada 
  nomeUsuario="Lorca"
/>
<ImagemTratada 
  nomeUsuario="Michael"
/>
<ImagemTratada 
  nomeUsuario="Saru"
/>
<ImagemTratada 
  nomeUsuario="Tyler"
/>
```


## Passo a Passo
 

## Referências

https://facebook.github.io/react-native/docs/native-modules-ios.html

https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/WorkingwithProtocols/WorkingwithProtocols.html

https://developer.apple.com/library/content/documentation/General/Conceptual/ConcurrencyProgrammingGuide/OperationQueues/OperationQueues.html

https://stackoverflow.com/questions/47554366/how-to-create-multiple-instances-of-a-native-module