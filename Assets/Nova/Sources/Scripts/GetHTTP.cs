using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;
using UnityEngine.Networking;
using System.Runtime.InteropServices;

namespace Nova
{
    public class GetHTTP : MonoBehaviour
    {

        [DllImport("__Internal")]
        private static extern string GetSync(string str);

        [DllImport("__Internal")]
        private static extern string GetPath();

        public string getHTTPFileContentSync(string path)
        {
            Debug.Log($"Getting {path}...");
            return GetSync(path);
        }

        public string getScriptJSON()
        {
            return GetPath();
        }

    }
}
