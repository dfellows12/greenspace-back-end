class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users.to_json({
            except: [:created_at, :updated_at],
            :include => {
                :user_plants => {
                    except: [:created_at, :updated_at]
                }
            },
            :include => {
                :plants => {
                    except: [:created_at, :updated_at]
                }

            }
        })

    end
    
    def create
        newUser = User.create(name: params["name"], password: params["phone_number"], email: params["email"], phone_number: params["phone_number"])
        render json: newUser
    end

    def login
        user = User.find_by(name: params["name"])
        if user 
            render json: user
        else
            render json: {message: "User not found"}
        end
    end

end

     # except: [:created_at, :updated_at],
                # :include => {
                #   :events => {
                #     except: [:created_at, :updated_at]
                #   },
                #   :user_events => {
                #     except: [:created_at, :updated_at]
                #   }
                # }