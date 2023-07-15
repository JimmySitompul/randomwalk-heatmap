# Desire Path Simulation Model

This model simulates the creation of desire paths by 50 agents in a 100-by-100 grid matrix. The model keeps track of a heatmap, which indicates the frequency with which each cell is stepped on by the agents. This heatmap helps determine the most preferred desire paths within the simulated environment.

## Overview

The purpose of this model is to understand how desire paths emerge in a given environment based on repeated agent movement. Desire paths are unplanned routes that form as a result of individuals seeking the most efficient or preferred way to reach a destination. By simulating agent behavior and tracking their movement patterns, we can observe the emergence and evolution of desire paths over time.

## Simulation Process

1. **Initialization**: The model begins by creating a 100-by-100 grid matrix representing the environment. Each cell in the matrix initially has a heatmap value of 0, indicating no agent movement.

2. **Agent Movement**: 50 agents are randomly placed within the environment. The agents navigate towards their respective destinations using a predefined algorithm. As they move, the heatmap values of the cells they step on are incremented to record the frequency of agent presence.

3. **Desire Path Calculation**: After all the agents have reached their destinations or completed a specific number of steps, the heatmap is analyzed to identify the desire paths. Cells with higher heatmap values indicate more frequent agent movement, suggesting a preference for those routes.

4. **Reset and Repeat**: Once all the agents have reached their destinations, their positions are reset to the initial positions, and the desire path simulation process is repeated for 1 week (7 days) within the model.

5. **Visualization**: The desire paths can be visualized using various techniques, such as color-coding the cells based on the heatmap values or drawing lines to connect cells with high heatmap values.

## Usage

To use this model and simulate desire path creation:

1. Install the required dependencies and libraries specified in the `requirements.txt` file.

2. Run the model script, which will initiate the desire path simulation for the specified duration (e.g., 1 week).

3. Analyze the output, such as the heatmap data, to identify the most preferred desire paths within the environment.

4. Visualize the desire paths using appropriate visualization techniques to gain insights into agent behavior and path preferences.

## Customization

The model can be customized in various ways to suit specific requirements or scenarios:

- **Grid Size**: The size of the grid matrix can be adjusted to represent different environments or spatial scales.

- **Agent Behavior**: The agent movement algorithm can be modified to reflect specific navigation behaviors or preferences.

- **Simulation Duration**: The duration of the simulation can be adjusted to observe desire path formation over different time periods.

- **Visualization Methods**: The visualization techniques can be customized to provide a clear representation of desire paths, such as using different colors, line thicknesses, or overlaying the paths on real-world maps.
 
