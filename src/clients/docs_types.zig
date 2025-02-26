// The purpose of these types is to help in reading this doc, not
// because the types matter.
const String = []const u8;

// All Code variables are potentially tested and run in CI.
const Code = []const u8;

// All Markdown strings are never tested and run in CI.
const Markdown = []const u8;

pub const Docs = struct {
    // Location of the readme on disk
    readme: String,

    // Package name (i.e. tigerbeetle-go, tigerbeetle-node, etc.)
    name: String,

    // Name for syntax highlighting (i.e. javascript for node, go for go, etc.)
    markdown_name: String,

    // File extension without dot (i.e. js, go, etc.)
    extension: String,

    // For the title of the page on the docs site.
    proper_name: String,

    // Introduction to the client. Links to docs or build badges or
    // whatnot.
    description: Markdown,

    // Any libraries or languages and their required versions for
    // using, not necessarily hacking on, this client.
    prerequisites: Markdown,

    // If you need an additional project file like pom.xml or
    // package.json. Leave blank if not needed.
    project_file_name: String,
    // The actual contents of the file. Leave blank if not needed.
    project_file: Code,

    // If you need to override the default name of test.${extension}
    // such as when file names have meaning (i.e. Java).
    test_file_name: String,

    // Alpine instructions to get the environment set up.
    install_prereqs: Code,

    // Alters the project to use a package built from the current commit
    // Runs before .install_commands
    current_commit_pre_install_commands: Code,
    // Runs after .install_commands
    current_commit_post_install_commands: Code,

    // Any setup needed for a project before compiling and running
    // such as `go mod init myProject && go mod tidy` or `npm install
    // tigerbeetle-node`.
    install_commands: Code,
    // Minimal code just to test importing the package works.
    install_sample_file: Code,

    // Commands for testing that code compiles. (Not shown to the user.)
    install_sample_file_build_commands: Code,
    // Commands for running the shown sample file. (Shown to the user.)
    install_sample_file_test_commands: Code,
    // Additional instructions for install.
    install_documentation: Markdown,

    // If you want to include links to examples.
    examples: Markdown,

    client_object_example: Code,
    client_object_documentation: Markdown,

    create_accounts_example: Code,
    create_accounts_documentation: Markdown,

    create_accounts_errors_example: Code,
    create_accounts_errors_documentation: Markdown,

    account_flags_example: Code,
    account_flags_documentation: Markdown,

    lookup_accounts_example: Code,

    create_transfers_example: Code,
    create_transfers_documentation: Markdown,

    create_transfers_errors_example: Code,
    create_transfers_errors_documentation: Markdown,

    // Good example of using batches to create transfers.
    batch_example: Code,
    // Bad example of not using batches well to create transfers.
    no_batch_example: Code,

    transfer_flags_documentation: Markdown,
    transfer_flags_link_example: Code,
    transfer_flags_post_example: Code,
    transfer_flags_void_example: Code,

    lookup_transfers_example: Code,

    linked_events_example: Code,

    developer_setup_sh_commands: Code,
    developer_setup_pwsh_commands: Code,

    // Docker image to use to build and run commands in. (Not shown to
    // user.)
    test_linux_docker_image: String,

    // Optional prefix if test code must be in a certain directory
    // (e.g. Java and `src/main/java`).
    test_source_path: String,

    // All code that must exist before sample code is concatenated
    // such as main function declaration, import declaration, etc.
    test_main_prefix: Code,
    // All code that must exist after sample code is concatenated such
    // as closing braces.
    test_main_suffix: Code,
};
