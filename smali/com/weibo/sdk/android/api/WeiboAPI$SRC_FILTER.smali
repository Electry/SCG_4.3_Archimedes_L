.class public final enum Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;
.super Ljava/lang/Enum;
.source "WeiboAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weibo/sdk/android/api/WeiboAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SRC_FILTER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;

.field public static final enum ALL:Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;

.field public static final enum WEIBO:Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;

.field public static final enum WEIQUN:Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;->ALL:Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;

    new-instance v0, Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;

    const-string v1, "WEIBO"

    invoke-direct {v0, v1, v3}, Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;->WEIBO:Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;

    new-instance v0, Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;

    const-string v1, "WEIQUN"

    invoke-direct {v0, v1, v4}, Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;->WEIQUN:Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;

    sget-object v1, Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;->ALL:Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;

    aput-object v1, v0, v2

    sget-object v1, Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;->WEIBO:Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;

    aput-object v1, v0, v3

    sget-object v1, Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;->WEIQUN:Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;

    aput-object v1, v0, v4

    sput-object v0, Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;->$VALUES:[Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;

    return-object v0
.end method

.method public static values()[Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;->$VALUES:[Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;

    invoke-virtual {v0}, [Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/weibo/sdk/android/api/WeiboAPI$SRC_FILTER;

    return-object v0
.end method
