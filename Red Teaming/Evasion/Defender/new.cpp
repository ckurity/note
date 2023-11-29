extern "C" {
__declspec(dllexport) BOOL WINAPI DllRegisterServer(void) {

	MessageBox( NULL, "Welcome!", "Gemini Security", MB_OK );