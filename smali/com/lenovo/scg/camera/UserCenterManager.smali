.class public Lcom/lenovo/scg/camera/UserCenterManager;
.super Ljava/lang/Object;
.source "UserCenterManager.java"

# interfaces
.implements Lcom/lenovo/scg/camera/ui/Rotatable;


# static fields
.field public static final DIALOG_TAG_INFO:I = 0x2

.field public static final DIALOG_TAG_LOGIN:I = 0x1

.field private static final DIALOG_TAG_WELCOME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "usercenter"


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private currentView:I

.field private mContext:Landroid/app/Activity;

.field private mLoginView:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

.field private mOrientation:I

.field private mRootView:Landroid/widget/RelativeLayout;

.field private rotateLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

.field private sinaManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

.field private withChild:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/scg/camera/UserCenterManager;->currentView:I

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/scg/camera/UserCenterManager;->withChild:Z

    .line 115
    new-instance v0, Lcom/lenovo/scg/camera/UserCenterManager$2;

    invoke-direct {v0, p0}, Lcom/lenovo/scg/camera/UserCenterManager$2;-><init>(Lcom/lenovo/scg/camera/UserCenterManager;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/UserCenterManager;->clickListener:Landroid/view/View$OnClickListener;

    .line 54
    iput-object p1, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mContext:Landroid/app/Activity;

    .line 55
    new-instance v0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-direct {v0, p1}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/UserCenterManager;->sinaManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/scg/camera/UserCenterManager;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/UserCenterManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lenovo/scg/camera/UserCenterManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/scg/camera/UserCenterManager;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/lenovo/scg/camera/UserCenterManager;->currentView:I

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/scg/camera/UserCenterManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/scg/camera/UserCenterManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method private isUserLogin()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterManager;->sinaManager:Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;

    invoke-virtual {v0}, Lcom/lenovo/scg/gallery3d/sharecenter/SinaShareManager;->isLogin()Z

    move-result v0

    return v0
.end method

.method private showView(Landroid/view/View;Z)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rotate"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v1, 0x1

    .line 172
    const-string/jumbo v3, "usercenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "showView : view = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v3, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 174
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v9, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 175
    .local v9, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p1, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v3, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 177
    const v3, 0x7f1009c1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lenovo/scg/camera/ui/RotateLayout;

    iput-object v3, p0, Lcom/lenovo/scg/camera/UserCenterManager;->rotateLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    .line 178
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/camera/UserCenterManager;->rotateLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    const/16 v5, 0x10e

    invoke-virtual {v3, v5, v11}, Lcom/lenovo/scg/camera/ui/RotateLayout;->setOrientation(IZ)V

    .line 180
    :cond_0
    const/4 v2, 0x0

    .local v2, "fromX":F
    const/4 v4, 0x0

    .local v4, "toX":F
    const/4 v6, 0x0

    .local v6, "fromY":F
    const/4 v8, 0x0

    .line 181
    .local v8, "toY":F
    iget v3, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_2

    .line 182
    const/high16 v2, -0x40800000    # -1.0f

    .line 186
    :cond_1
    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 188
    .local v0, "translate":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v10, 0x1f4

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 189
    iget-object v1, p0, Lcom/lenovo/scg/camera/UserCenterManager;->rotateLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 190
    return-void

    .line 183
    .end local v0    # "translate":Landroid/view/animation/TranslateAnimation;
    :cond_2
    iget v3, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    const/16 v5, 0x5a

    if-ne v3, v5, :cond_1

    .line 184
    const/high16 v6, -0x40800000    # -1.0f

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 12

    .prologue
    const/4 v1, 0x1

    .line 69
    iget-object v3, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mRootView:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const-string/jumbo v3, "usercenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clear: getWithChild() == "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/lenovo/scg/camera/UserCenterManager;->getWithChild()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Lcom/lenovo/scg/camera/UserCenterManager;->getWithChild()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    const/4 v2, 0x0

    .local v2, "fromX":F
    const/4 v4, 0x0

    .local v4, "toX":F
    const/4 v6, 0x0

    .local v6, "fromY":F
    const/4 v8, 0x0

    .line 73
    .local v8, "toY":F
    iget v3, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_3

    .line 74
    const/high16 v4, -0x40800000    # -1.0f

    .line 78
    :cond_2
    :goto_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 80
    .local v0, "translate":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v10, 0x1f4

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 81
    new-instance v1, Lcom/lenovo/scg/camera/UserCenterManager$1;

    invoke-direct {v1, p0}, Lcom/lenovo/scg/camera/UserCenterManager$1;-><init>(Lcom/lenovo/scg/camera/UserCenterManager;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 104
    iget-object v1, p0, Lcom/lenovo/scg/camera/UserCenterManager;->rotateLayout:Lcom/lenovo/scg/camera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/lenovo/scg/camera/ui/RotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 75
    .end local v0    # "translate":Landroid/view/animation/TranslateAnimation;
    :cond_3
    iget v3, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    const/16 v5, 0x5a

    if-ne v3, v5, :cond_2

    .line 76
    const/high16 v8, -0x40800000    # -1.0f

    goto :goto_1
.end method

.method public getWithChild()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/lenovo/scg/camera/UserCenterManager;->withChild:Z

    return v0
.end method

.method public isFollowSuperCamera()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mLoginView:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 194
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mLoginView:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->isFollowSuperCamera()Z

    move-result v0

    goto :goto_0
.end method

.method public isFollowSuperGallery()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mLoginView:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 199
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mLoginView:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->isFollowSuperGallery()Z

    move-result v0

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 0
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 209
    iput p1, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mOrientation:I

    .line 210
    return-void
.end method

.method public setRootView(Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mRootView:Landroid/widget/RelativeLayout;

    .line 132
    return-void
.end method

.method public setWithChild(Z)V
    .locals 0
    .param p1, "with"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/lenovo/scg/camera/UserCenterManager;->withChild:Z

    .line 113
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lenovo/scg/camera/UserCenterManager;->isUserLogin()Z

    move-result v0

    .line 60
    .local v0, "isLogin":Z
    const-string/jumbo v1, "usercenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userCenterLogic &&  isLogin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    if-eqz v0, :cond_0

    .line 62
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/UserCenterManager;->show(I)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lenovo/scg/camera/UserCenterManager;->show(I)V

    goto :goto_0
.end method

.method public show(I)V
    .locals 7
    .param p1, "tag"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 135
    iget-object v3, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 136
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .line 137
    .local v0, "dView":Landroid/view/View;
    packed-switch p1, :pswitch_data_0

    .line 149
    :pswitch_0
    const-string/jumbo v3, "usercenter"

    const-string/jumbo v4, "showDialog ---------- default"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    const-string/jumbo v3, "usercenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "show: tag = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", currentView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lenovo/scg/camera/UserCenterManager;->currentView:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRootView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mRootView:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_1

    .line 159
    :cond_0
    :goto_1
    return-void

    .line 139
    :pswitch_1
    const-string/jumbo v3, "usercenter"

    const-string/jumbo v4, "showDialog ---------- welcome"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const v3, 0x7f040198

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 141
    const v3, 0x7f1009ca

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 142
    .local v2, "login":Landroid/widget/Button;
    iget-object v3, p0, Lcom/lenovo/scg/camera/UserCenterManager;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 145
    .end local v2    # "login":Landroid/widget/Button;
    :pswitch_2
    const-string/jumbo v3, "usercenter"

    const-string/jumbo v4, "showDialog ---------- info"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const v3, 0x7f040196

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 147
    goto :goto_0

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mRootView:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    iget v3, p0, Lcom/lenovo/scg/camera/UserCenterManager;->currentView:I

    if-eq v3, p1, :cond_0

    .line 156
    iput p1, p0, Lcom/lenovo/scg/camera/UserCenterManager;->currentView:I

    .line 157
    invoke-virtual {p0, v6}, Lcom/lenovo/scg/camera/UserCenterManager;->setWithChild(Z)V

    .line 158
    invoke-direct {p0, v0, v6}, Lcom/lenovo/scg/camera/UserCenterManager;->showView(Landroid/view/View;Z)V

    goto :goto_1

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public showDialog(Lcom/weibo/sdk/android/Weibo;Landroid/content/Context;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboAuthListener;)V
    .locals 8
    .param p1, "weibo"    # Lcom/weibo/sdk/android/Weibo;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/weibo/sdk/android/WeiboAuthListener;

    .prologue
    const/4 v7, 0x1

    .line 163
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mRootView:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 164
    :cond_0
    new-instance v0, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    iget-object v1, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mRootView:Landroid/widget/RelativeLayout;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;-><init>(Landroid/widget/RelativeLayout;Lcom/weibo/sdk/android/Weibo;Landroid/content/Context;Ljava/lang/String;Lcom/weibo/sdk/android/WeiboAuthListener;)V

    iput-object v0, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mLoginView:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    .line 165
    iget-object v0, p0, Lcom/lenovo/scg/camera/UserCenterManager;->mLoginView:Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;

    invoke-virtual {v0}, Lcom/lenovo/scg/camera/UserCenterWeiboLoginView;->getLoginView()Landroid/view/View;

    move-result-object v6

    .line 166
    .local v6, "loginView":Landroid/view/View;
    iput v7, p0, Lcom/lenovo/scg/camera/UserCenterManager;->currentView:I

    .line 167
    invoke-virtual {p0, v7}, Lcom/lenovo/scg/camera/UserCenterManager;->setWithChild(Z)V

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, v6, v0}, Lcom/lenovo/scg/camera/UserCenterManager;->showView(Landroid/view/View;Z)V

    goto :goto_0
.end method
