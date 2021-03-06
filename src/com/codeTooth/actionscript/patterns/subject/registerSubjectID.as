package com.codeTooth.actionscript.patterns.subject
{
	import flash.utils.describeType;

	public function registerSubjectID(clazzes:Vector.<Class>, subjects:Subjects):void
	{
		if(subjects == null)
		{
			return;
		}
		
		for each(var clazz:Class in clazzes)
		{
			if(clazz == null)
			{
				continue;
			}
			
			var xml:XML = describeType(clazz);
			var constantXMLList:XMLList = xml.constant;
			for each(var constantXML:XML in constantXMLList)
			{
				subjects.addSubject(clazz[String(constantXML.@name)]);
			}
		}
	}
}