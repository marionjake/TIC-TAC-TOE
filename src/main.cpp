#include <iostream>
#include <string>

extern "C" { 
#include "raylib.h" 
}

uint8_t gameOver = 0;
bool upperCenter = false;
bool upperRight = false;

struct coordinates
{
    int x;
    int y;
};

Rectangle rec1 = {
    .x = 330,
    .y = 180,
    .width = 10,
    .height = 180
};

Rectangle rec2 = {
    .x = 400,
    .y = 180,
    .width = 10,
    .height = 180
};

Rectangle rec3 = {
    .x = 250,
    .y = 240,
    .width = 240,
    .height = 10
};

Rectangle rec4 = {
    .x = 250,
    .y = 290,
    .width = 240,
    .height = 10
};

Rectangle recUpperMiddle = {
    .x = 340,
    .y = 180,
    .width = 60,
    .height = 60
};

Rectangle recUpperRight = {
    .x = 410,
    .y = 180,
    .width = 80,
    .height = 60
};


//TODO: add param offsets x and y
void drawBoardCross()
{
    int centerX =  GetScreenWidth() / 2;
    int centerY = GetScreenHeight() / 2;

    // Draw a small 'X' (cross) at the center
    int crossSize = 30;  // Adjust the size as neededs
    float lineSize = 15;

    // Draw a thicker 'X' (cross) at the center
    DrawLineEx(
        (Vector2){ static_cast<float>(centerX - 30 - lineSize), static_cast<float>(centerY - 15 - lineSize) }, 
        (Vector2){ static_cast<float>(centerX - 30 + lineSize), static_cast<float>(centerY - 15 + lineSize) }, 
        lineSize, RED
    );

    DrawLineEx(
        (Vector2){ static_cast<float>(centerX - 30 - lineSize), static_cast<float>(centerY - 15 + lineSize) }, 
        (Vector2){ static_cast<float>(centerX - 30 + lineSize), static_cast<float>(centerY - 15 - lineSize) }, 
        lineSize, RED
    );
}


//TODO: add param offsets x and y
void drawBoardCircle()
{
    int centerX = GetScreenWidth() / 2;
    int centerY = GetScreenHeight() / 2;

    // Define the outer and inner radii of the circle
    float outerRadius = 23;
    float innerRadius = outerRadius / 2;

    DrawCircle(centerX + 45, centerY - 15, outerRadius, GREEN);

    // Draw the smaller filled circle on top to create a hole
    DrawCircle(centerX + 45, centerY - 15, innerRadius, RAYWHITE); // Set the color to the background color
}



int main(int argc, char* argv[])
{
    // Initialization
    //--------------------------------------------------------------------------------------
    const int screenWidth = 800;
    const int screenHeight = 450;

    InitWindow(screenWidth, screenHeight, "TIC TAC TOE");

    // TODO: Load resources / Initialize variables at this point

    SetTargetFPS(60);
    //--------------------------------------------------------------------------------------

    // Main game loop
    while (!WindowShouldClose() || gameOver)    // Detect window close button or ESC key
    {
        // Update
        //----------------------------------------------------------------------------------
        // TODO: Update variables / Implement example logic at this point
        //----------------------------------------------------------------------------------

        // Draw
        //----------------------------------------------------------------------------------
        BeginDrawing();

        ClearBackground(RAYWHITE);

        DrawText("TIC TAC TOE", 140, 50, 70, LIME);

        DrawRectangleLinesEx(rec1, 10, BLACK);
        DrawRectangleLinesEx(rec2, 10, BLACK);
        DrawRectangleLinesEx(rec3, 10, BLACK);
        DrawRectangleLinesEx(rec4, 10, BLACK);
        //DrawRectangleLinesEx(rec5, 10, BLACK);
        DrawRectangleLinesEx(recUpperRight, 10, BLUE);
        //drawBoardCircle();


        // TODO: Draw everything that requires to be drawn at this point: 
        if (IsMouseButtonPressed(MOUSE_LEFT_BUTTON)) 
        {
            // Handle the click event here
            int mouseX = GetMouseX(); 
            int mouseY = GetMouseY(); 

            //TODO: add logic to separate clicks for different players
            if (CheckCollisionPointRec((Vector2){ static_cast<float>(mouseX), static_cast<float>(mouseY) }, recUpperMiddle)) 
            {
                upperCenter = true;
            }
            else if (CheckCollisionPointRec((Vector2){ static_cast<float>(mouseX), static_cast<float>(mouseY) }, recUpperRight))
            {
                upperRight = true;
            }
        }

        if(upperCenter)
        {
            drawBoardCross();
        }

        if(upperRight)
        {
            drawBoardCircle();
        }
         
        EndDrawing();
        //----------------------------------------------------------------------------------
    }
    // De-Initialization
    //--------------------------------------------------------------------------------------

    // TODO: Unload all loaded resources at this point

    CloseWindow();        // Close window and OpenGL context
    //--------------------------------------------------------------------------------------

    return 0;
}