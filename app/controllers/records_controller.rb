# frozen_string_literal: true

class RecordsController < ApplicationController
  before_action :authenticate_user!

  def show
    @person_bodies = current_user.person_bodies
    @person_diaries = current_user.person_diaries
    @exercise_people = current_user.exercise_people.includes(:exercise)
  end
end
