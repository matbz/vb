<template>
  <div style="height: 100%">
    <div class="pure-g header">
      <div class="pure-u-1-3 header-cancel">
      </div>
      <div class="pure-u-1-3 header-text">Team-Roulette</div>
      <div class="pure-u-1-3 header-logout">
      </div>
    </div>
    <div class="content2">
      <div class="pure-g add-list">
        <div style="width: 100%; height: 100%">
          <div class="turnover-group">Spieler auswählen:</div>

          <player-item
          v-for="item in members"
          :item = "item"
          :key="item.id"
          >
          </player-item>
        </div>
      </div>
    </div>
    <div class="pure-g footer">
      <button class="pure-u-1-4 active" @click="goTo('players')">
        <div><i class="fa fa-user footer-icon"></i></div>
        <div class="footer-text">Auswählen</div>
      </button>
      <button class="pure-u-1-4" @click="goTo('team')">
        <div><i class="fa fa-cubes footer-icon"></i></div>
        <div class="footer-text">Würfeln</div>
      </button>
      <button class="pure-u-1-4" @click="addPlayer()">
        <div><i class="fa fa-plus-circle footer-icon"></i></div>
        <div class="footer-text">Hinzufügen</div>
      </button>
      <button class="pure-u-1-4" @click="goTo('delete')">
        <div><i class="fa fa-trash footer-icon"></i></div>
        <div class="footer-text">Löschen</div>
      </button>
    </div>
    <modal-add-player name='add-player'></modal-add-player>
  </div>
</template>

<script>
import { mapGetters } from 'vuex';
import PlayerItem from './PlayerItem';
import ModalAddPlayer from './ModalAddPlayer';


export default {
  components: {
    PlayerItem,
    ModalAddPlayer
  },
  computed: {
    ...mapGetters([
      'members'
    ])
  },
  methods: {
    goTo(routeName) {
      this.$router.push({ name: routeName });
    },
    addPlayer() {
      this.$modal.show('add-player');
    }
  }
};
</script>

