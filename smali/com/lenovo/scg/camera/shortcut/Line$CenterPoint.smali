.class Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;
.super Ljava/lang/Object;
.source "Line.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/shortcut/Line;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CenterPoint"
.end annotation


# instance fields
.field public centerX:I

.field public centerY:I

.field final synthetic this$0:Lcom/lenovo/scg/camera/shortcut/Line;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/shortcut/Line;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 95
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;->this$0:Lcom/lenovo/scg/camera/shortcut/Line;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput v0, p0, Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;->centerX:I

    .line 97
    iput v0, p0, Lcom/lenovo/scg/camera/shortcut/Line$CenterPoint;->centerY:I

    return-void
.end method
