rule MalwareRule {
    meta:
        description = "Detects known malware patterns"
    strings:
        $string1 = " {4D 5A 90 00 03 00 00 00 }"
        $string2 = "cmd.exe /c echo Malicious Command"
        $string3 = "GET /malicious_url HTTP/1.1"
    condition:
        any of them
}
