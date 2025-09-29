# Claude Code Instructions for PYNQ Project

## Documentation Maintenance Policy

**IMPORTANT**: Always maintain comprehensive documentation for any fixes, workarounds, or new procedures implemented during development.

### Required Documentation Updates

When implementing any fixes or workarounds for compatibility issues, system problems, or build errors, **ALWAYS** update the following files:

#### 1. tutorial01.md Updates
- Add detailed solutions to compatibility issues
- Include complete step-by-step instructions for fixes
- Document alternative approaches when standard methods fail
- Provide specific command examples and error messages
- Include security considerations and alternative solutions
- Add troubleshooting sections for new issues discovered

#### 2. progress.md Updates
- Update checklists with completed resolution steps
- Add new sub-tasks for fixes implemented
- Mark compatibility issues as resolved with brief descriptions
- Track progress on workarounds and alternative approaches
- Document any deviations from the original plan

### Specific Areas Requiring Documentation

#### Ubuntu Compatibility Issues
- Document any compatibility problems with newer Ubuntu versions (e.g., Ubuntu 25.04)
- Include specific fixes for glibc version conflicts
- Document AppArmor restrictions and solutions
- Add alternative approaches when direct fixes aren't available

#### Build System Workarounds
- Document any build failures and their solutions
- Include alternative build strategies (e.g., component-by-component builds)
- Document dependency issues and resolution methods
- Add monitoring and verification procedures

#### Version Compatibility
- Document Vivado/PetaLinux version compatibility matrices
- Include fixes for version mismatch errors
- Document TCL script compatibility issues and solutions

### Documentation Standards

#### For tutorial01.md:
- Use clear section headers for each issue type
- Include complete command sequences
- Provide both temporary and permanent solutions
- Add security warnings where applicable
- Include verification steps
- Cross-reference to troubleshooting sections

#### For progress.md:
- Use checkbox format for tracking completion
- Include specific command references
- Add file paths and output examples
- Note any deviations from standard procedures
- Track both successes and required workarounds

### Examples of Required Documentation

When encountering issues like:
- `struct sched_attr` redefinition errors in QEMU builds
- AppArmor user namespace restrictions
- Host distribution validation warnings
- Version compatibility problems

**MUST** document:
1. **Root Cause**: Technical explanation of the issue
2. **Impact**: What functionality is affected
3. **Solution**: Complete fix procedure with commands
4. **Verification**: How to confirm the fix works
5. **Alternatives**: Other approaches if primary solution fails
6. **Prevention**: How to avoid the issue in future setups

### Maintenance Workflow

1. **Identify Issue**: Document the problem and error messages
2. **Research Solution**: Investigate and test potential fixes
3. **Implement Fix**: Apply the solution and verify it works
4. **Update Documentation**:
   - Add comprehensive solution to tutorial01.md
   - Update progress tracking in progress.md
   - Include verification steps and alternatives
5. **Test Documentation**: Ensure instructions are complete and accurate

### Quality Standards

- Documentation must be complete enough for someone else to reproduce the fix
- Include all necessary context and prerequisites
- Provide troubleshooting steps for common variations
- Update both user-facing tutorial and progress tracking documents
- Maintain consistency between documentation files

This policy ensures that all knowledge gained during development is preserved and can be used by future developers working on the project.