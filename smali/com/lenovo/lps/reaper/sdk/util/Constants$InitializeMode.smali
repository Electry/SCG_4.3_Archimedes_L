.class public final enum Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InitializeMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

.field public static final enum Normal:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

.field public static final enum Smart:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 315
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    const-string v1, "Smart"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;->Smart:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    .line 316
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v3}, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;->Normal:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    .line 314
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;->Smart:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;->Normal:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;->$VALUES:[Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

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
    .line 314
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 314
    const-class v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;
    .locals 1

    .prologue
    .line 314
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;->$VALUES:[Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    invoke-virtual {v0}, [Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    return-object v0
.end method
