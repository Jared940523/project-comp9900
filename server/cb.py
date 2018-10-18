from chatterbot import ChatBot
from chatterbot.trainers import ChatterBotCorpusTrainer

# Uncomment the following lines to enable verbose logging
# import logging
# logging.basicConfig(level=logging.INFO)

# Create a new instance of a ChatBot
chatterbot = ChatBot(
    "ING v.0.1",
    preprocessors=[
        'chatterbot.preprocessors.clean_whitespace'
    ],
##    storage_adapter="chatterbot.storage.SQLStorageAdapter",
    logic_adapters=[
        {
            "import_path": "chatterbot.logic.BestMatch",
            "statement_comparison_function": "chatterbot.comparisons.levenshtein_distance",
            "response_selection_method": "chatterbot.response_selection.get_first_response"
        },
         {
            'import_path': 'chatterbot.logic.LowConfidenceAdapter',
            'threshold': 0.45,
            'default_response': 'I am sorry, this maybe beyond my perceiving.'
        }
    ],
    input_adapter="chatterbot.input.VariableInputTypeAdapter",
    output_adapter="chatterbot.output.OutputAdapter",
    output_format="text",
    database="database.db",
    read_only=True,
)
# chatterbot.set_trainer(ChatterBotCorpusTrainer)

# chatterbot.train(
#     "../ai.yml",
#     "chatterbot.corpus.english.conversations",
# )
