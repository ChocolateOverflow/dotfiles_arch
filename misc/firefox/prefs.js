// Add to firefox profile
// Default: ~/.mozilla/firefox/*.default-release/prefs.js

user_pref("privacy.resistfingerprinting", true);
user_pref("geo.enabled", false);
user_pref("plugin.scan.plid.all", false);
user_pref("browser.newtabpage.activity-stream.feeds.telemetry browser.newtabpage.activity-stream.telemetry", false);
user_pref("browser.pingcentre.telemetry", false);
user_pref("devtools.onboarding.telemetry-logged", false);
user_pref("media.wmf.deblacklisting-for-telemetry-in-gpu-process", false);
user_pref("toolkit.telemetry.archive.enabled", false);
user_pref("toolkit.telemetry.bhrping.enabled", false);
user_pref("toolkit.telemetry.firstshutdownping.enabled", false);
user_pref("toolkit.telemetry.hybridcontent.enabled", false);
user_pref("toolkit.telemetry.newprofileping.enabled", false);
user_pref("toolkit.telemetry.unified", false);
user_pref("toolkit.telemetry.updateping.enabled", false);
user_pref("toolkit.telemetry.shutdownpingsender.enabled", false);
user_pref("network.protocol-handler.expose.magnet", false);
user_pref("network.trr.mode", 3);
