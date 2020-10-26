class ContributionsController < ApplicationController
    def create
        user = current_user
        tree = Tree.find(params[:id])
        amount = '1000'

        Contribution.create(user: user, tree: tree, amount: amount)
    end
end