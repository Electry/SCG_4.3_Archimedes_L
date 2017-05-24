.class Lcom/lenovo/scg/common/utils/SCGUtils$3;
.super Ljava/lang/Object;
.source "SCGUtils.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/common/utils/SCGUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/common/utils/SCGUtils;


# direct methods
.method constructor <init>(Lcom/lenovo/scg/common/utils/SCGUtils;)V
    .locals 0

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/SCGUtils$3;->this$0:Lcom/lenovo/scg/common/utils/SCGUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1131
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lenovo/scg/common/utils/SCGUtils$DownloadFile;

    .line 1134
    .local v0, "file":Lcom/lenovo/scg/common/utils/SCGUtils$DownloadFile;
    const/4 v1, 0x0

    return v1
.end method
