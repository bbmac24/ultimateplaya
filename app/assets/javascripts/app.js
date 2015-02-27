angular.module("app", []) 

  .controller("ctrl", ['$http', function($http){
    var vm = this;
    $http.get("/api/teams").then(function(teams){
      vm.teams = teams.data; 
    });


    vm.changedTeam = function () {
      $http.get("/api/roster?team_id=" + vm.selectedTeamId).then(function(roster){
        vm.roster = roster.data;

      });

    }

    vm.selectedPlayer = function () {
      $http.get("/api/player?id=" + vm.selectedPlayerId).then(function(player){
        vm.players.push(player.data)
      });

      // vm.playerselected = true;
    }

    vm.players = []
  
  }]); 

