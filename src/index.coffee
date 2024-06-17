Profile =

  save: ( profile ) ->
    localStorage.setItem "profile", JSON.stringify profile

  load: ( context ) -> 
    profile = JSON.parse localStorage.getItem "profile"
    { context..., profile }

  update: ( f ) ->
    ( context ) ->
      profile = f JSON.parse localStorage.getItem "profile"
      { context..., profile }
    
  connected: -> ( localStorage.getItem "profile" )?

export default Profile
export { Profile }