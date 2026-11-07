export const guideConfig={endpoint:'/api/ask'};
export async function sendGuideMessage(payload,{endpoint=guideConfig.endpoint,fetcher=fetch}={}){
 if(!endpoint)throw Error('AI guide is not connected yet.');
 const controller=new AbortController(),timer=setTimeout(()=>controller.abort(),125000);
 try{const res=await fetcher(endpoint,{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({question:payload.question,course:payload.course||''}),signal:controller.signal});if(!res.ok)throw Error('The tutor is temporarily unavailable. Please try again.');const data=await res.json();if(data.status!=='success'||typeof data.answer!=='string')throw Error('The tutor returned an unreadable response. Please try again.');return data;}catch(e){if(e.name==='AbortError')throw Error('The answer took too long. Please try again.');throw e;}finally{clearTimeout(timer);}
}
