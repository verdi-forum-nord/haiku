defmodule Haiku.Config do
    @moduledoc """
        Default configuration values for haiku.
    """

    def delimiter do
        Application.get_env(:haiku, :delimiter) || '-'
    end

    def range do
        Application.get_env(:haiku, :range) || 9999
    end

    def nouns do
        Application.get_env(:haiku, :nouns) || ~w(
        waterfall river breeze moon rain wind sea morning
        snow lake sunset pine shadow leaf dawn glitter forest
        hill cloud meadow sun glade bird brook butterfly
        bush dew dust field fire flower firefly feather grass
        haze mountain night pond darkness snowflake silence
        sound sky shape surf thunder violet water wildflower
        wave water resonance sun wood dream cherry tree fog
        frost voice paper frog smoke star
        )
    end

    def adjectives do
        Application.get_env(:haiku, :adjectives) || ~w(
        autumn hidden bitter misty silent empty dry dark summer
        icy delicate quiet white cool spring winter patient
        twilight dawn crimson wispy weathered blue billowing
        broken cold damp falling frosty green long late lingering
        bold little morning muddy old red rough still small
        sparkling throbbing shy wandering withered wild black
        young holy solitary fragrant aged snowy proud floral
        restless divine polished ancient purple lively nameless
        )
    end

    def reducer_module do
        Application.get_env(:haiku, :reducer_module)
    end

    def reducer_function do
        Application.get_env(:haiku, :reducer_function)
    end
end
