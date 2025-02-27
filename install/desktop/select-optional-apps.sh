if [[ -v OMAKUB_FIRST_RUN_OPTIONAL_APPS ]]; then
	apps=$OMAKUB_FIRST_RUN_OPTIONAL_APPS

	if [[ -n "$apps" ]]; then
		for single_app in ${(f)app}; do
    		source "$OMAKUB_PATH/install/desktop/optional/app-${single_app:l}.sh"
		done
	fi
fi
