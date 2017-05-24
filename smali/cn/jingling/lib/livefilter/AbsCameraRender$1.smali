.class Lcn/jingling/lib/livefilter/AbsCameraRender$1;
.super Landroid/os/AsyncTask;
.source "AbsCameraRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jingling/lib/livefilter/AbsCameraRender;->setFilterAsync(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jingling/lib/livefilter/AbsCameraRender;

.field private final synthetic val$filterLabel:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/jingling/lib/livefilter/AbsCameraRender;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/jingling/lib/livefilter/AbsCameraRender$1;->this$0:Lcn/jingling/lib/livefilter/AbsCameraRender;

    iput-object p2, p0, Lcn/jingling/lib/livefilter/AbsCameraRender$1;->val$filterLabel:Ljava/lang/String;

    .line 99
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/jingling/lib/livefilter/AbsCameraRender$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 107
    iget-object v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender$1;->this$0:Lcn/jingling/lib/livefilter/AbsCameraRender;

    iget-object v1, p0, Lcn/jingling/lib/livefilter/AbsCameraRender$1;->val$filterLabel:Ljava/lang/String;

    # invokes: Lcn/jingling/lib/livefilter/AbsCameraRender;->_updateLable(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcn/jingling/lib/livefilter/AbsCameraRender;->access$0(Lcn/jingling/lib/livefilter/AbsCameraRender;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcn/jingling/lib/livefilter/AbsCameraRender$1;->this$0:Lcn/jingling/lib/livefilter/AbsCameraRender;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/jingling/lib/livefilter/AbsCameraRender;->access$1(Lcn/jingling/lib/livefilter/AbsCameraRender;Z)V

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method
