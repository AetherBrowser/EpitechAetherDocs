---
name: "AETHER"
title: "Beta Test Plan"
slogan: "High-performance memory-safe web browser"
document-date: "November 25, 2026"
modify-date: "November 25, 2026"
---

# **1. Project context**

Aether is a desktop web browser written in Rust. It renders pages with Servo, draws its interface with egui, and filters ads and trackers on the network path. There is no account and no cloud sync: the product is a local window the user opens, points at a URL, and browses.

The beta is the slice that must be demonstrable during the first major presentation. It covers one complete browsing session: open the browser, load a page, move through history, manage a few tabs, save a page, and see that filtering ran. A second path is for someone building a site: open the built-in tools, read a page error, read a failed network request, and read a load timing. Settings, extensions, downloads, history search, and video playback stay out of this list (25/11). Anything written here is a commitment the participants can ask to see.

# **2. User roles**

  -----------------------------------------------------------------------
  **Role**          **Description**
  ----------------- -----------------------------------------------------
  User              The person at the machine. Opens Aether, types an address, reads the page, uses tabs and bookmarks, and checks the tracker shield. There is no admin and no signed-in account.

  Developer         Someone building or checking a website. Uses the tools built into Aether to see that the page works, to read its errors, and to read its load performance, without installing anything else.
  -----------------------------------------------------------------------

# **3. Feature table**

Features follow one session, in order. Each name is an action.

  -------------------------------------------------------------------------------------------------------------------------------
  **ID**   **User role**   **Feature name**                  **Short description**
  -------- --------------- --------------------------------- --------------------------------------------------------------------
  F1       User            Launch the browser                Start Aether from the desktop or a binary and reach an empty window with an address bar.

  F2       User            Open a page from a URL            Type an address and load the page. A progress state is visible while it loads.

  F3       User            Go back and forward               Move through the pages already visited in the current tab.

  F4       User            Reload the page                   Refresh the current page without losing the tab.

  F5       User            Open a new tab                    Add a tab and land on an empty address bar.

  F6       User            Switch between tabs               Select another open tab and see its page, not a blank window.

  F7       User            Close a tab                       Close the current tab. The window stays open while another tab remains.

  F8       User            Bookmark the current page         Save the page locally from the address bar, with a title.

  F9       User            Open a saved bookmark             Load a previously saved page from the bookmark list.

  F10      User            Read the tracker shield           See how many requests the filter blocked on a week / month (25/11).

  F11      Developer       Open the developer tools          Open the built-in panel on the current page.

  F12      Developer       Read a page error                 See a JavaScript error from the page in the console, with the message and the source.

  F13      Developer       Read the page load time           See how long the current page took to load, in the same panel.

  F14      Developer       Read a network error              See a failed request in the network panel, with its URL and status code.
  -------------------------------------------------------------------------------------------------------------------------------

# **4. Success criteria** (25/11)

Results stay empty until the team runs the protocol on a Linux build. Fill the last column before the session with the participants, with the figure, not only a label.

  -------------------------------------------------------------------------------------------------------------------------------------------------
  **ID**   **Key success criteria**                                              **Indicator**                         **Result**
  -------- --------------------------------------------------------------------- ------------------------------------- ----------------------------
  F1       The window appears and accepts input.                                 10 cold starts, 0 crashes.            Not measured

  F2       wikipedia.org and example.com render readable content.                10 loads of each, 0 blank pages.      Not measured

  F3       Back then forward restores the previous and next page.                10 round trips, 0 wrong pages.        Not measured

  F4       Reload fetches the page again in the same tab.                        10 reloads, 0 lost tabs.              Not measured

  F5       A new tab opens and can receive a URL.                                10 new tabs, all usable.              Not measured

  F6       Switching tabs shows the page that belongs to that tab.               6 tabs, 20 switches, 0 mix-ups.       Not measured

  F7       Closing a tab removes it and leaves the others intact.                10 closes, 0 window exits.            Not measured

  F8       The bookmark is still listed after a restart.                         5 saves, 5 still present.             Not measured

  F9       Opening a bookmark loads the saved URL.                               5 opens, 5 correct pages.             Not measured

  F10      The shield count is greater than zero on a page that embeds ads.      5 news homepages, count visible.      Not measured

  F11      The tools panel opens on the current page and closes again.           10 open/close cycles, 0 crashes.      Not measured

  F12      A thrown error on a test page appears in the console.                 5 pages with a known error, 5 messages shown. Not measured

  F13      The panel shows a load duration in milliseconds after navigation.     10 loads, 10 timings displayed.       Not measured

  F14      A request that returns an error shows its URL and status.             5 pages with a known 404, 5 statuses shown. Not measured
  -------------------------------------------------------------------------------------------------------------------------------------------------

# Warning WIP
--> (25/11) indicates the date an item was drafted; it will need to be updated later.
