.class Lcom/lenovo/scg/common/utils/SCGUtils$2;
.super Ljava/lang/Object;
.source "SCGUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/scg/common/utils/SCGUtils;->showDialog(I)V
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
    .line 1109
    iput-object p1, p0, Lcom/lenovo/scg/common/utils/SCGUtils$2;->this$0:Lcom/lenovo/scg/common/utils/SCGUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 1113
    iget-object v2, p0, Lcom/lenovo/scg/common/utils/SCGUtils$2;->this$0:Lcom/lenovo/scg/common/utils/SCGUtils;

    # getter for: Lcom/lenovo/scg/common/utils/SCGUtils;->mAutoUpdateDialog:Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->access$000(Lcom/lenovo/scg/common/utils/SCGUtils;)Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/scg/gallery3d/ui/AutoUpdateDialog;->dismiss()V

    .line 1114
    iget-object v2, p0, Lcom/lenovo/scg/common/utils/SCGUtils$2;->this$0:Lcom/lenovo/scg/common/utils/SCGUtils;

    const-string v3, "VerCode"

    iget-object v4, p0, Lcom/lenovo/scg/common/utils/SCGUtils$2;->this$0:Lcom/lenovo/scg/common/utils/SCGUtils;

    # getter for: Lcom/lenovo/scg/common/utils/SCGUtils;->mVerCode:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/scg/common/utils/SCGUtils;->access$100(Lcom/lenovo/scg/common/utils/SCGUtils;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/lenovo/scg/common/utils/SCGUtils;->putStringToPreferences(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/lenovo/scg/common/utils/SCGUtils;->access$200(Lcom/lenovo/scg/common/utils/SCGUtils;Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-static {v8}, Lcom/lenovo/lps/sus/SUS;->setSDKPromptDisableFlag(Z)V

    .line 1116
    iget-object v2, p0, Lcom/lenovo/scg/common/utils/SCGUtils$2;->this$0:Lcom/lenovo/scg/common/utils/SCGUtils;

    # getter for: Lcom/lenovo/scg/common/utils/SCGUtils;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->access$300(Lcom/lenovo/scg/common/utils/SCGUtils;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/scg/common/utils/SCGUtils$2;->this$0:Lcom/lenovo/scg/common/utils/SCGUtils;

    # getter for: Lcom/lenovo/scg/common/utils/SCGUtils;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/scg/common/utils/SCGUtils;->access$300(Lcom/lenovo/scg/common/utils/SCGUtils;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0746

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1117
    new-instance v0, Lcom/lenovo/scg/common/utils/SCGUtils$DownloadFile;

    iget-object v2, p0, Lcom/lenovo/scg/common/utils/SCGUtils$2;->this$0:Lcom/lenovo/scg/common/utils/SCGUtils;

    invoke-direct {v0, v2}, Lcom/lenovo/scg/common/utils/SCGUtils$DownloadFile;-><init>(Lcom/lenovo/scg/common/utils/SCGUtils;)V

    .line 1118
    .local v0, "file":Lcom/lenovo/scg/common/utils/SCGUtils$DownloadFile;
    iget-object v2, p0, Lcom/lenovo/scg/common/utils/SCGUtils$2;->this$0:Lcom/lenovo/scg/common/utils/SCGUtils;

    # getter for: Lcom/lenovo/scg/common/utils/SCGUtils;->mUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->access$400(Lcom/lenovo/scg/common/utils/SCGUtils;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/scg/common/utils/SCGUtils$DownloadFile;->url:Ljava/lang/String;

    .line 1119
    iget-object v2, p0, Lcom/lenovo/scg/common/utils/SCGUtils$2;->this$0:Lcom/lenovo/scg/common/utils/SCGUtils;

    # getter for: Lcom/lenovo/scg/common/utils/SCGUtils;->mFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->access$500(Lcom/lenovo/scg/common/utils/SCGUtils;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/scg/common/utils/SCGUtils$DownloadFile;->fileName:Ljava/lang/String;

    .line 1120
    iget-object v2, p0, Lcom/lenovo/scg/common/utils/SCGUtils$2;->this$0:Lcom/lenovo/scg/common/utils/SCGUtils;

    # getter for: Lcom/lenovo/scg/common/utils/SCGUtils;->mFileSize:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/scg/common/utils/SCGUtils;->access$600(Lcom/lenovo/scg/common/utils/SCGUtils;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/scg/common/utils/SCGUtils$DownloadFile;->fileSize:Ljava/lang/String;

    .line 1121
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1122
    .local v1, "message":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1123
    iget-object v2, p0, Lcom/lenovo/scg/common/utils/SCGUtils$2;->this$0:Lcom/lenovo/scg/common/utils/SCGUtils;

    iget-object v2, v2, Lcom/lenovo/scg/common/utils/SCGUtils;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1124
    return-void
.end method
