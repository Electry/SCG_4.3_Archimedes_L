.class Lcom/lenovo/scg/camera/shortcut/Level$Line;
.super Ljava/lang/Object;
.source "Level.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/shortcut/Level;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Line"
.end annotation


# instance fields
.field public p1:Landroid/graphics/Point;

.field public p2:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/lenovo/scg/camera/shortcut/Level;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/camera/shortcut/Level;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/lenovo/scg/camera/shortcut/Level$Line;->this$0:Lcom/lenovo/scg/camera/shortcut/Level;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
