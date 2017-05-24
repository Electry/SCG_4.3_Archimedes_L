.class Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;
.super Ljava/lang/Object;
.source "ImageFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/idl/lib/file/ImageFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreadNote"
.end annotation


# instance fields
.field public params:[Ljava/lang/Object;

.field public task:Landroid/os/AsyncTask;

.field final synthetic this$0:Lcom/baidu/idl/lib/file/ImageFile;


# direct methods
.method public varargs constructor <init>(Lcom/baidu/idl/lib/file/ImageFile;Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "task"    # Landroid/os/AsyncTask;
    .param p3, "params"    # [Ljava/lang/Object;

    .prologue
    .line 761
    iput-object p1, p0, Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;->this$0:Lcom/baidu/idl/lib/file/ImageFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    iput-object p2, p0, Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;->task:Landroid/os/AsyncTask;

    .line 763
    iput-object p3, p0, Lcom/baidu/idl/lib/file/ImageFile$ThreadNote;->params:[Ljava/lang/Object;

    .line 764
    return-void
.end method
