.class public abstract Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;
.super Ljava/lang/Object;
.source "ShareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;,
        Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$ShareResultObject;,
        Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;
    }
.end annotation


# instance fields
.field protected atInfo:Ljava/lang/String;

.field protected mCheckBox:Landroid/widget/CheckBox;

.field protected mCurrentSharePlatform:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

.field protected mFinishListener:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;

.field protected mPosition:I

.field protected mSelected:Z

.field protected mSendReport:Lcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->mSelected:Z

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->mFinishListener:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;

    .line 136
    return-void
.end method


# virtual methods
.method public getAtInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->atInfo:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getAttentionList(Z)Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlatformDescription()Ljava/lang/String;
.end method

.method public abstract getPlatformIconId()I
.end method

.method public abstract getScreenName()Ljava/lang/String;
.end method

.method public abstract getToken()V
.end method

.method public abstract getUserSelcetStatus()Z
.end method

.method public getmCurrentSharePlatform()Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->mCurrentSharePlatform:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    return-object v0
.end method

.method public abstract isLogin()Z
.end method

.method public abstract isSelected()Z
.end method

.method public abstract keepToken()V
.end method

.method public abstract login()V
.end method

.method public abstract saveAttentionList(Ljava/util/LinkedList;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/scg/gallery3d/sharecenter/BaseWeiboUser;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract saveScreenName()V
.end method

.method public abstract saveUserIcon(Ljava/lang/String;)V
.end method

.method public setAtInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->atInfo:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public abstract setCheckbox(Landroid/widget/CheckBox;)V
.end method

.method public setOnShareFinishListener(Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->mFinishListener:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$OnShareFinishListener;

    .line 143
    return-void
.end method

.method public abstract setSelected(Z)V
.end method

.method public abstract setSendReport(ILcom/lenovo/scg/gallery3d/sharecenter/SendReportListener;)V
.end method

.method public abstract setUserSelectStatus(Z)Z
.end method

.method public setmCurrentSharePlatform(Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;)V
    .locals 0
    .param p1, "mCurrentSharePlatform"    # Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager;->mCurrentSharePlatform:Lcom/lenovo/scg/gallery3d/sharecenter/ShareManager$SharePlatform;

    .line 111
    return-void
.end method

.method public abstract share(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract shareWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
