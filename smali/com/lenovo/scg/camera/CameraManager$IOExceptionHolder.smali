.class Lcom/lenovo/scg/camera/CameraManager$IOExceptionHolder;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IOExceptionHolder"
.end annotation


# instance fields
.field public ex:Ljava/io/IOException;

.field final synthetic this$0:Lcom/lenovo/scg/camera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/camera/CameraManager;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/lenovo/scg/camera/CameraManager$IOExceptionHolder;->this$0:Lcom/lenovo/scg/camera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
