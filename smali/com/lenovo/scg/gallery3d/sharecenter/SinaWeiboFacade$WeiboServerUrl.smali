.class Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$WeiboServerUrl;
.super Ljava/lang/Object;
.source "SinaWeiboFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeiboServerUrl"
.end annotation


# static fields
.field public static final WEIBO_FRIENDSHIPS_URL:Ljava/lang/String; = "https://api.weibo.com/2/friendships/friends.json"

.field public static final WEIBO_FRIENDSHIP_CREATE_URL:Ljava/lang/String; = "https://api.weibo.com/2/friendships/create.json"

.field public static final WEIBO_LOGOUT_URL:Ljava/lang/String; = "https://api.weibo.com/2/account/end_session.json/"

.field public static final WEIBO_SERVER:Ljava/lang/String; = "https://api.weibo.com/2/"

.field public static final WEIBO_UPLOAD_URL:Ljava/lang/String; = "https://upload.api.weibo.com/2/statuses/upload.json"

.field public static final WEIBO_USERINFO_URL:Ljava/lang/String; = "https://api.weibo.com/2/users/show.json"


# instance fields
.field final synthetic this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;


# direct methods
.method private constructor <init>(Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade$WeiboServerUrl;->this$0:Lcom/lenovo/scg/gallery3d/sharecenter/SinaWeiboFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
