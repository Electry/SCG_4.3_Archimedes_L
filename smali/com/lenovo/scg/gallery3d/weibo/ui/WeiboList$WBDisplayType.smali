.class public final enum Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;
.super Ljava/lang/Enum;
.source "WeiboList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WBDisplayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

.field public static final enum ALL_FRIENDS_BY_PEOPLE:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

.field public static final enum ALL_FRIENDS_BY_TIME:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

.field public static final enum FRIEND_DETAIL:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 265
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    const-string v1, "ALL_FRIENDS_BY_PEOPLE"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->ALL_FRIENDS_BY_PEOPLE:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    .line 267
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    const-string v1, "ALL_FRIENDS_BY_TIME"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->ALL_FRIENDS_BY_TIME:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    .line 269
    new-instance v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    const-string v1, "FRIEND_DETAIL"

    invoke-direct {v0, v1, v4}, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->FRIEND_DETAIL:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    .line 263
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->ALL_FRIENDS_BY_PEOPLE:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->ALL_FRIENDS_BY_TIME:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->FRIEND_DETAIL:Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->$VALUES:[Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 263
    const-class v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->$VALUES:[Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    invoke-virtual {v0}, [Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/scg/gallery3d/weibo/ui/WeiboList$WBDisplayType;

    return-object v0
.end method
