# frozen_string_literal: true

class RecordsController < ApplicationController
  before_action :authenticate_user!

  def show
    @person_bodies = {}
    current_user.person_bodies.group(:weight_date).each do |person_body|
      @person_bodies[person_body.weight_date.strftime("%Y-%m-%d")] = person_body.weight
    end
    @person_diaries = current_user.person_diaries.order(diary_date: :desc)
    @exercise_people = current_user.exercise_people.includes(:exercise).group(:exercise_date).order(exercise_date: :desc)
  end
end
