.class public final enum Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;
.super Ljava/lang/Enum;
.source "WeiboAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weibo/sdk/android/api/WeiboAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EMOTION_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;

.field public static final enum ANI:Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;

.field public static final enum CARTOON:Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;

.field public static final enum FACE:Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;

    const-string v1, "FACE"

    invoke-direct {v0, v1, v2}, Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;->FACE:Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;

    new-instance v0, Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;

    const-string v1, "ANI"

    invoke-direct {v0, v1, v3}, Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;->ANI:Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;

    new-instance v0, Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;

    const-string v1, "CARTOON"

    invoke-direct {v0, v1, v4}, Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;->CARTOON:Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;

    sget-object v1, Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;->FACE:Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;->ANI:Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;->CARTOON:Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;->$VALUES:[Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v0, Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;->$VALUES:[Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;

    invoke-virtual {v0}, [Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/weibo/sdk/android/api/WeiboAPI$EMOTION_TYPE;

    return-object v0
.end method
