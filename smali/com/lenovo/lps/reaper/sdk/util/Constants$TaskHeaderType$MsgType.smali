.class public final enum Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MsgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;

.field public static final enum Message:Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 304
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;

    const-string v1, "Message"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;->Message:Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;

    .line 303
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;->Message:Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;->$VALUES:[Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;

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
    .line 303
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 303
    const-class v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;
    .locals 1

    .prologue
    .line 303
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;->$VALUES:[Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;

    invoke-virtual {v0}, [Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$MsgType;

    return-object v0
.end method
