import tkinter as tk

# Create the main window
root = tk.Tk()
root.title("1/8 and 7/8 Layout")
root.geometry("800x400")  # Width x Height

# Configure grid columns for 1:7 ratio
root.columnconfigure(0, weight=1)
root.columnconfigure(1, weight=7)

# Left Frame (1/8)
left_frame = tk.Frame(root, bg="orange")
left_frame.grid(row=0, column=0, sticky="nsew")

# Right Frame (7/8)
right_frame = tk.Frame(root, bg="lightblue")
right_frame.grid(row=0, column=1, sticky="nsew")

# Optional: Add some content
tk.Label(left_frame, text="1/8 Part", bg="orange").pack(padx=10, pady=10)
tk.Label(right_frame, text="7/8 Part", bg="lightblue").pack(padx=10, pady=10)

# Make row expandable
root.rowconfigure(0, weight=1)

# Start the GUI loop
root.mainloop()
