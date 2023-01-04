require 'sinatra'

class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'

    get '/' do
        'Hello World'
    end

    get '/exercise' do
        exercises = Exercise.all
        exercises.to_json
    end

    get '/workout' do
        workouts = Workout.all 
        workouts.to_json
    end

    get '/repsandsets' do 
        reps_and_sets = RepAndSet.all
        reps_and_sets.to_json
    end

    get '/exercise/:id' do
        exercise = Exercise.find(params[:id])
        exercise.to_json
    end

    get '/workout/:id' do
        workout = Workout.find(params[:id])
        workout.to_json
    end

    get '/repsandsets/:id' do
        rep_and_set = RepAndSet.find(params[:id])
        rep_and_set.to_json
    end

    post '/exercise' do
        exercise = Exercise.create(
            name: params[:name],
            muscle: params[:muscle],
            workout_id: params[:workout_id],
            rep_and_set_id: params[:rep_and_set_id]
        )
    end

    post '/workout' do
        workout = Workout.create (
            name: params[:name],
            workout_id: params[:workout_id]
        )
    end

    post '/repsandsets' do
        rep_and_set = RepAndSet.create(
            reps: params[:reps]
            sets: params[:sets]
            rep_and_set_id: params[:rep_and_set_id]
        )
    end

    patch '/exercise/:id' do
        exercise = Exercise.find(params[:id])
        exercise.update (
            name: params[:name]
        )
    end

    patch '/workout/:id' do
        workout = Exercise.find(params[:id])
        workout.update (
            name: params[:name]
        )
    end 

    patch '/repsandsets/:id' do
        rep_and_set: RepAndSet.find(params[:id])
        rep_and_set.update (
            reps: params[:reps],
            sets: params[:sets]
        )
    end

    delete '/exercise/:id' do
        exercise = Exercise.find(params[:id])
        exercise.destroy
    end

    delete '/workout/:id' do
        workout = Workout.find(params[:id])
        workout.destroy
    end

    delete '/repsandsets/:id' do
        rep_and_set = RepAndSet.find(params[:id])
        rep_and_set.destroy
    end


end