.class Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1;
.super Ljava/lang/Object;
.source "SCGInputFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1;->this$0:Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "mRunnableCount start run"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 67
    new-instance v0, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1$1;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1$1;-><init>(Lcom/lenovo/scg/gallery3d/common/SCGInputFilter$1;)V

    # setter for: Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mCountHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->access$002(Landroid/os/Handler;)Landroid/os/Handler;

    .line 112
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 114
    const/4 v0, 0x0

    # setter for: Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->mInputLocked:Z
    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/SCGInputFilter;->access$202(Z)Z

    .line 115
    const-string v0, "SCGInputFilter looper run end: set mInputLocked = false"

    invoke-static {v0}, Lcom/lenovo/scg/gallery3d/common/Utils;->TangjrLog(Ljava/lang/String;)V

    .line 116
    return-void
.end method
