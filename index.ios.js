/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  AppRegistry,
  Button,
  NativeEventEmitter,
  NativeModules,
  StyleSheet,
  Text,
  View
} from 'react-native';

const tratarImagem = NativeModules.TratarImagem;
const emissorTratarImagem = new NativeEventEmitter(tratarImagem);

const inscricao = emissorTratarImagem.addListener(
  'entregarImagem',
  (data) => {
    console.info('entregarImagem', data);
  }
)

export default class NativeModule extends Component {
  componentDidMount() {
    tratarImagem.testarEvento();
    tratarImagem.testarEventoComParametro('url.da.imagem');
    tratarImagem.testarEventoComParametro('url.da.imagem.2');
    tratarImagem.testarEventoComParametro('url.da.imagem.3');
    tratarImagem.testarEventoComParametro('url.da.imagem.4');
    tratarImagem.testarEventoComParametro('url.da.imagem.5');
  }
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>
          Módulos Nativos
        </Text>
        <Button
          title="Iniciar Teste"
          onPress={() => {
            tratarImagem.testarEvento();
          }}
        />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

AppRegistry.registerComponent('NativeModule', () => NativeModule);
