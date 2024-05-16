Profile =

  load: ( context ) -> 
    profile = JSON.parse localStorage.getItem "profile"
    { context..., profile }

  connected: ->
    ( localStorage.getItem "profile" )?

export default Profile
export { Profile }