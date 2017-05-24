.class Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;
.super Ljava/lang/Object;
.source "Line.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/shortcut/Line;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NineLinePoint"
.end annotation


# instance fields
.field public leftBottomX:I

.field public leftBottomY:I

.field public leftTopX:I

.field public leftTopY:I

.field public rightBottomX:I

.field public rightBottonY:I

.field public rightTOpY:I

.field public rightTopX:I

.field final synthetic this$0:Lcom/lenovo/scg/camera/shortcut/Line;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/shortcut/Line;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 122
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->this$0:Lcom/lenovo/scg/camera/shortcut/Line;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput v0, p0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopX:I

    .line 124
    iput v0, p0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftTopY:I

    .line 126
    iput v0, p0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTopX:I

    .line 127
    iput v0, p0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightTOpY:I

    .line 129
    iput v0, p0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomX:I

    .line 130
    iput v0, p0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->leftBottomY:I

    .line 132
    iput v0, p0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottomX:I

    .line 133
    iput v0, p0, Lcom/lenovo/scg/camera/shortcut/Line$NineLinePoint;->rightBottonY:I

    return-void
.end method
