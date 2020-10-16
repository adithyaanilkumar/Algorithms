// A C# program for Dijkstra's single source shortest path algorithm. 
using System;
class DijkstrasShortestPath
{
    public int minDistance(int[] dist, bool[] sptSet, int N)
    {
        // Initialize min value 
        int min = int.MaxValue, minIndex = -1;

        for (int v = 0; v < N; v++)
            if (sptSet[v] == false && dist[v] <= min)
            {
                min = dist[v];
                minIndex = v;
            }

        return minIndex;
    }
    public int[] ShortestPath(int[,] graph, int source, int N)
    {
        int[] distances = new int[N];

        bool[] sptSet = new bool[N];
        for (int vertex = 0; vertex < N; vertex++)
        {
            if (vertex != source)
            {
                distances[vertex] = int.MaxValue;
            }
            sptSet[vertex] = false;
        }

        // Distance of source vertex from itself is always 0
        distances[source] = 0;

        // Find shortest path for all vertices 
        for (int count = 0; count < N - 1; count++)
        {
            // Pick the minimum distance vertex from the set of verticesnot yet processed. u is always equal to src in first iteration. 
            int u = minDistance(distances, sptSet, N);

            // Mark the picked vertex as processed 
            sptSet[u] = true;

            // Update distances value of the adjacent vertices of the picked vertex. 
            for (int v = 0; v < N; v++)

                // Update dist[v] only if is not in sptSet, there is an edge from u to v, and total weight of path from src to v through u is smaller than current value of dist[v] 
                if (!sptSet[v] && graph[u, v] != 0 && distances[u] != int.MaxValue && distances[u] + graph[u, v] < distances[v])
                    distances[v] = distances[u] + graph[u, v];
        }
        return distances;
    }

    void printResult(int[] result)
    {
        for(int v = 0; v < result.Length; v++)
        {
            Console.WriteLine($"distance[{v}] : {result[v]}");
        }
    }
    public static void Main(String[] args)
    {
        int[,] graph = new int[,] { { 0, 4, 0, 0, 0, 0, 0, 8, 0 },
                                    { 4, 0, 8, 0, 0, 0, 0, 11, 0 },
                                    { 0, 8, 0, 7, 0, 4, 0, 0, 2 },
                                    { 0, 0, 7, 0, 9, 14, 0, 0, 0 },
                                    { 0, 0, 0, 9, 0, 10, 0, 0, 0 },
                                    { 0, 0, 4, 14, 10, 0, 2, 0, 0 },
                                    { 0, 0, 0, 0, 0, 2, 0, 1, 6 },
                                    { 8, 11, 0, 0, 0, 0, 1, 0, 7 },
                                    { 0, 0, 2, 0, 0, 0, 6, 7, 0 } };
        DijkstrasShortestPath dsp = new DijkstrasShortestPath();
        var result = dsp.ShortestPath(graph, 0, 9);
        dsp.printResult(result);
    }
}